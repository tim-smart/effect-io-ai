Package: `effect`<br />
Module: `Effect`<br />

## Effect.requestUnsafe

Low-level entry point that registers a request with a resolver and delivers the exit value via `onExit`.
Use this when you already have a `Context` and need to enqueue a request outside an `Effect`.

It returns a canceler that removes the pending request entry.

**Signature**

```ts
declare const requestUnsafe: <A extends Request.Any>(self: A, options: { readonly resolver: RequestResolver<A>; readonly onExit: (exit: Exit.Exit<Request.Success<A>, Request.Error<A>>) => void; readonly context: Context.Context<never>; }) => () => void
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L7974)

Since v4.0.0