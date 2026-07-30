Package: `effect`<br />
Module: `Record`<br />

## Record.getEquivalence

Create an `Equivalence` for records using the provided `Equivalence` for values.

**Signature**

```ts
declare const getEquivalence: <K extends string, A>(equivalence: Equivalence<A>) => Equivalence<ReadonlyRecord<K, A>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Record.ts#L1214)

Since v2.0.0