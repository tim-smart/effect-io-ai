Package: `@effect/typeclass`<br />
Module: `Bounded`<br />

## Bounded.between

Checks if a value is between the lower and upper limit of a bound.

**Signature**

```ts
declare const between: <A>(B: Bounded<A>) => (a: A) => boolean
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/typeclass/src/Bounded.ts#L51)

Since v0.24.0