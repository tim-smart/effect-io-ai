# hasProperty

Checks whether a value is an `object` containing a specified property key.

To import and use `hasProperty` from the "Predicate" module:

```ts
import * as Predicate from "effect/Predicate"
// Can be accessed like this
Predicate.hasProperty
```

**Signature**

```ts
export declare const hasProperty: {
  <P extends PropertyKey>(property: P): (self: unknown) => self is { [K in P]: unknown }
  <P extends PropertyKey>(self: unknown, property: P): self is { [K in P]: unknown }
}
```
