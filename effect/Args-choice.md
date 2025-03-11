## choice

Creates a choice argument.

Can optionally provide a custom argument name (defaults to `"choice"`).

**Signature**

```ts
declare const choice: <A>(choices: ReadonlyArray<[string, A]>, config?: Args.BaseArgsConfig) => Args<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cli/src/Args.ts#L191)

Since v1.0.0