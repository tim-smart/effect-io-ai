Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.all

Takes an iterable of predicates and returns a new predicate that tests an array of values.
The new predicate returns `true` if each predicate at a given index is satisfied by the
value at the same index in the array. The check stops at the length of the shorter of
the two iterables (predicates or values).

**See**

- tuple for a more powerful, variadic version.

**Signature**

```ts
declare const all: <A>(collection: Iterable<Predicate<A>>) => Predicate<ReadonlyArray<A>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L954)

Since v2.0.0