Package: `effect`<br />
Module: `Duration`<br />

## Duration.CombinerMin

Combiner that returns the minimum `Duration`.

**When to use**

Use to keep the shortest `Duration` through APIs that consume a `Combiner`.

**See**

- `CombinerMax` for keeping the longest `Duration`
- `min` for comparing two `Duration` values directly

**Signature**

```ts
declare const CombinerMin: Combiner.Combiner<Duration>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Duration.ts#L1827)

Since v4.0.0