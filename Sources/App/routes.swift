import Vapor

/// Register your application's routes here.
public func routes( _ router: Router ) throws
{
    // Basic "Hello, world!" example
    router.get("hello")             {
        cRequest in
            return "Hello, world!"  }
    
    router.post( "api", "acronyms" )    {
        cRequest -> Future<Acronym> in
        return try cRequest.content.decode( Acronym.self ).flatMap( to: Acronym.self ) {
            cAcronym in
                return cAcronym.save( on: cRequest )    }   }
}
