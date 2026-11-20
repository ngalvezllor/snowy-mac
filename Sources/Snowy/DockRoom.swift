import Foundation
import CoreGraphics

/// Asks WindowServer for the room the Dock reserves. This is an undocumented SkyLight call,
/// so it returns nil whenever anything looks unexpected and callers keep the old estimate.
enum DockRoom {
    private typealias Connection = @convention(c) () -> Int32
    private typealias GetRect = @convention(c) (Int32, UnsafeMutablePointer<CGRect>, UnsafeMutablePointer<Int32>) -> Int32

    private static let functions: (Connection, GetRect)? = {
        guard let handle = dlopen("/System/Library/PrivateFrameworks/SkyLight.framework/SkyLight", RTLD_LAZY),
              let connection = dlsym(handle, "SLSMainConnectionID"),
              let getRect = dlsym(handle, "SLSGetDockRectWithReason") else { return nil }
        return (unsafeBitCast(connection, to: Connection.self), unsafeBitCast(getRect, to: GetRect.self))
    }()

    static func rect() -> CGRect? {
        guard let (connection, getRect) = functions else { return nil }
        var rect = CGRect.zero
        var reason: Int32 = 0
        guard getRect(connection(), &rect, &reason) == 0,
              rect.minX.isFinite, rect.minY.isFinite,
              rect.width > 32, rect.height > 16, rect.width < 20_000, rect.height < 2_000 else { return nil }
        return rect
    }
}
