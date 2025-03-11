## hasProperty

Checks whether a value is an `object` containing a specified property key.

**Signature**

```ts
declare const hasProperty: { <P extends PropertyKey>(property: P): (self: unknown) => self is { [K in P]: unknown; }; <P extends PropertyKey>(self: unknown, property: P): self is { [K in P]: unknown; }; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L463)

Since v2.0.0