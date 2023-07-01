class ServerException implements Exception{}

class DatabaseException extends ServerException{
  final String message;

  DatabaseException(this.message);
}