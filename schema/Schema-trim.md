# trim

This combinator allows removing whitespaces from the beginning and end of a string.

To import and use `trim` from the "Schema" module:

```ts
import * as Schema from '@effect/schema/Schema'

// Can be accessed like this
Schema.trim
```

**Signature**

```ts
export declare const trim: <I, A extends string>(self: Schema<I, A>) => Schema<I, A>
```
