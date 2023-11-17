# split

This combinator allows splitting a string into an array of strings.

To import and use `split` from the "Schema" module:

```ts
import * as Schema from "@effect/schema/Schema"
// Can be accessed like this
Schema.split
```

**Signature**

```ts
export declare const split: {
  (separator: string): <I, A extends string>(self: Schema<I, A>) => Schema<I, readonly string[]>
  <I, A extends string>(self: Schema<I, A>, separator: string): Schema<I, readonly string[]>
}
```
