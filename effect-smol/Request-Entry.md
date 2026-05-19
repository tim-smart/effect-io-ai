Package: `effect`<br />
Module: `Request`<br />

## Request.Entry

A pending request handed to a `RequestResolver`.

**Details**

An entry contains the original request, the fiber context needed to run it,
an `uninterruptible` flag used by batching and caching internals, and the
`completeUnsafe` callback used by resolvers to supply the final `Exit`.

**Signature**

```ts
export interface Entry<out R> {
  readonly request: R
  readonly context: Context.Context<
    [R] extends [Request<infer _A, infer _E, infer _R>] ? _R : never
  >
  uninterruptible: boolean
  completeUnsafe(
    exit: Exit.Exit<
      [R] extends [Request<infer _A, infer _E, infer _R>] ? _A : never,
      [R] extends [Request<infer _A, infer _E, infer _R>] ? _E : never
    >
  ): void
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Request.ts#L506)

Since v2.0.0