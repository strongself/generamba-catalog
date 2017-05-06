import Swinject

extension Resolver {
    /// Retrieves the instance with the specified service type.
    ///
    /// - Returns: The resolved service type instance, or nil if no service is found.
    func resolve<Service>() -> Service? {
        return resolve(Service.self)
    }
}
