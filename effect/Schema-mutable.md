# mutable

Creates a new schema with shallow mutability applied to its properties.

To import and use `mutable` from the "Schema" module:

ts
import \* as Schema from "effect/Schema"
// Can be accessed like this
Schema.mutable
undefined

**Signature**

```ts
export declare const mutable: <S extends Schema.Any>(schema: S) => mutable<S>
```
