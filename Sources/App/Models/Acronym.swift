import Vapor
import FluentSQLite

final class Acronym: Codable
{
    var id: Int?
    var short: String
    var long: String
    
    init( short pShort: String, long pLong: String )
    {
        self.short = pShort
        self.long = pLong
    }
}

extension Acronym: SQLiteModel{}
extension Acronym: Migration{}
extension Acronym: Content{}
