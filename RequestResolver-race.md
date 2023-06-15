# race

Returns a new data source that executes requests by sending them to this
data source and that data source, returning the results from the first data
source to complete and safely interrupting the loser.

Part of the `RequestResolver` module from the `@effect/io` package. Also known as `RequestResolver.race`.
