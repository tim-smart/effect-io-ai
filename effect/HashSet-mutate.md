Package: `effect`<br />
Module: `HashSet`<br />

## HashSet.mutate

Mutates the `HashSet` within the context of the provided function.

**Signature**

```ts
declare const mutate: { <A>(f: (set: HashSet<A>) => void): (self: HashSet<A>) => HashSet<A>; <A>(self: HashSet<A>, f: (set: HashSet<A>) => void): HashSet<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HashSet.ts#L153)

Since v2.0.0