Package: `effect`<br />
Module: `Duration`<br />

## Duration.CombinerMax

Combiner that returns the maximum `Duration`.

**When to use**

Use to keep the longest `Duration` when an API consumes a `Combiner`.

**See**

- `CombinerMin` for keeping the shortest `Duration`
- `max` for comparing two `Duration` values directly

**Signature**

```ts
declare const CombinerMax: Combiner.Combiner<Duration>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Duration.ts#L1842)

Since v4.0.0