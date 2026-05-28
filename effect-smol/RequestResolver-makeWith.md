Package: `effect`<br />
Module: `RequestResolver`<br />

## RequestResolver.makeWith

Creates a request resolver with fine-grained
control over its behavior.

**When to use**

Use when you need to supply the resolver batching primitives directly,
including the batch key, optional pre-check, delay effect, collection cutoff,
and batch runner.

**Details**

`batchKey` groups request entries, `delay` schedules batch execution,
`collectWhile` can end collection early, and `runAll` receives a non-empty
batch for one key.

**Gotchas**

Accepted entries must be completed. If `runAll` succeeds with incomplete
entries, waiting requests fail. If `preCheck` returns `false`, the entry is
not batched, so it must be completed or linked to another completion path.

**See**

- `make` for constructing a resolver from a batch runner
- `makeGrouped` for constructing a resolver that groups requests by key

**Signature**

```ts
declare const makeWith: <A extends Request.Any>(options: { readonly batchKey: (request: Request.Entry<A>) => unknown; readonly preCheck?: ((entry: Request.Entry<A>) => boolean) | undefined; readonly delay: Effect.Effect<void>; readonly collectWhile: (requests: ReadonlySet<Request.Entry<A>>) => boolean; readonly runAll: (entries: NonEmptyArray<Request.Entry<A>>, key: unknown) => Effect.Effect<void, Request.Error<A>>; }) => RequestResolver<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RequestResolver.ts#L216)

Since v4.0.0