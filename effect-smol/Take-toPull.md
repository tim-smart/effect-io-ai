Package: `effect`<br />
Module: `Take`<br />

## Take.toPull

Converts a `Take` into a `Pull`, succeeding with value batches, failing with
failure exits, and translating successful exits into pull completion.

**Signature**

```ts
declare const toPull: <A, E, Done>(take: Take<A, E, Done>) => Pull.Pull<NonEmptyReadonlyArray<A>, E, Done>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Take.ts#L44)

Since v4.0.0