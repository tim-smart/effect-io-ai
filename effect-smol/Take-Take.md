Package: `effect`<br />
Module: `Take`<br />

## Take.Take

Represents one pull result: either a non-empty batch of values, a failure
`Exit`, or a successful `Exit` that signals completion with a `Done` value.

**When to use**

Use to store, transfer, or interpret pull results later while preserving
emitted values, failures, and normal completion.

**See**

- `toPull` for interpreting a `Take` as a `Pull` step

**Signature**

```ts
type Take<A, E, Done> = NonEmptyReadonlyArray<A> | Exit.Exit<Done, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Take.ts#L29)

Since v2.0.0