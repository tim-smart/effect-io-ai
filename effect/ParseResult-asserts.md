# asserts

By default the option `exact` is set to `true`.

To import and use `asserts` from the "ParseResult" module:

```ts
import * as ParseResult from "effect/ParseResult"
// Can be accessed like this
ParseResult.asserts
```

**Signature**

```ts
export declare const asserts: <A, I, R>(
  schema: Schema.Schema<A, I, R>,
  options?: AST.ParseOptions
) => (u: unknown, overrideOptions?: AST.ParseOptions) => asserts u is A
```
