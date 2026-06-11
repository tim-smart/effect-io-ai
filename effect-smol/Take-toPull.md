Package: `effect`<br />
Module: `Take`<br />

## Take.toPull

Converts a `Take` into a `Pull`, succeeding with value batches, failing with
failure exits, and translating successful exits into pull completion.

**When to use**

Use to interpret a stored or transferred `Take` as a `Pull` step while
preserving emitted batches, ordinary failures, and completion values.

**Signature**

```ts
declare const toPull: <A, E, Done>(take: Take<A, E, Done>) => Pull.Pull<NonEmptyReadonlyArray<A>, E, Done>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Take.ts#L43)

Since v4.0.0