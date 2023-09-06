# symbolFromString

This combinator transforms a `string` into a `symbol`.

To import and use `symbolFromString` from the "Schema" module:

```ts
import * as Schema from '@effect/schema/Schema'

// Can be accessed like this
Schema.symbolFromString
```

**Signature**

```ts
export declare const symbolFromString: <I, A extends string>(self: Schema<I, A>) => Schema<I, symbol>
```
