Package: `effect`<br />
Module: `Sink`<br />

## Sink.End

Tuple returned when a `Sink` finishes.

The first element is the sink result. The optional second element contains a
non-empty array of leftover input that was pulled but not consumed.

**Signature**

```ts
type End<A, L> = readonly [value: A, leftover?: NonEmptyReadonlyArray<L> | undefined]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sink.ts#L110)

Since v4.0.0