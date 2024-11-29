# is

By default the option `exact` is set to `true`.

To import and use `is` from the "ParseResult" module:

ts
import \* as ParseResult from "effect/ParseResult"
// Can be accessed like this
ParseResult.is
undefined

**Signature**

```ts
export declare const is: <A, I, R>(
  schema: Schema.Schema<A, I, R>,
  options?: AST.ParseOptions
) => (u: unknown, overrideOptions?: AST.ParseOptions | number) => u is A
```
