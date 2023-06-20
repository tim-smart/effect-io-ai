# Index

The `Index` decode error indicates that there was an error at a specific index in an array or tuple.
The `errors` field contains the decode errors for that index. This error is typically used when decoding an array or tuple
with a schema that has constraints on the elements. For example, you might use an `Index` decode error to indicate
that a specific element in an array did not match the expected type or value.

To import and use `Index` from the "ParseResult" module:

```ts
import * as ParseResult from '@effect/schema/ParseResult'

// Can be accessed like this
ParseResult.Index
```
