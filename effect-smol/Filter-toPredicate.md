Package: `effect`<br />
Module: `Filter`<br />

## Filter.toPredicate

Converts a Filter into a predicate function.

**When to use**

Use to reuse a `Filter` with APIs that accept only boolean predicates when
the pass and fail payloads are not needed.

**See**

- `toOption` for keeping passed values and discarding failure values
- `toResult` for preserving both pass and failure values

**Signature**

```ts
declare const toPredicate: <A, Pass, Fail>(self: Filter<A, Pass, Fail>) => Predicate.Predicate<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Filter.ts#L277)

Since v4.0.0