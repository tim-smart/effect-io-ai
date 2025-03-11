## PCGRandom

PCG is a family of simple fast space-efficient statistically good algorithms
for random number generation. Unlike many general-purpose RNGs, they are also
hard to predict.

**Signature**

```ts
declare class PCGRandom { constructor(
    seedHi?: OptionalNumber,
    seedLo?: OptionalNumber,
    incHi?: OptionalNumber,
    incLo?: OptionalNumber
  ) }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Utils.ts#L516)

Since v2.0.0