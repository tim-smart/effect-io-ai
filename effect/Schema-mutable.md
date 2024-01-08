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
export declare const mutable: <I, A>(schema: Schema<I, A>) => Schema<Simplify<Mutable<I>>, Simplify<Mutable<A>>>
```
