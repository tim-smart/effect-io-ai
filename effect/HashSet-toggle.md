Package: `effect`<br />
Module: `HashSet`<br />

## HashSet.toggle

Checks if a value is present in the `HashSet`. If it is present, the value
will be removed from the `HashSet`, otherwise the value will be added to the
`HashSet`.

**Signature**

```ts
declare const toggle: { <A>(value: A): (self: HashSet<A>) => HashSet<A>; <A>(self: HashSet<A>, value: A): HashSet<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HashSet.ts#L227)

Since v2.0.0