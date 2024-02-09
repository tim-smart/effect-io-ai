# mutable

Creates a new schema with shallow mutability applied to its properties.

To import and use `mutable` from the "Schema" module:

```ts
import * as Schema from "@effect/schema/Schema"
// Can be accessed like this
Schema.mutable
```

**Signature**

```ts
export declare const mutable: <A, I, R>(
  schema: Schema<A, I, R>
) => Schema<Simplify<Mutable<A>>, Simplify<Mutable<I>>, R>
```
