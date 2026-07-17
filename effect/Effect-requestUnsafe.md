Package: `effect`<br />
Module: `Effect`<br />

## Effect.requestUnsafe

Registers a request with a resolver and delivers the exit value via `onExit`.

**When to use**

Use when you already have a `Context` and need to enqueue a request outside
an `Effect` while receiving completion through `onExit`.

**Details**

It returns a canceler that removes the pending request entry.

**See**

- `request` for the `Effect`-returning API used for normal request execution

**Signature**

```ts
declare const requestUnsafe: <A extends Request.Any>(self: A, options: { readonly resolver: RequestResolver<A>; readonly onExit: (exit: Exit.Exit<Request.Success<A>, Request.Error<A>>) => void; readonly context: Context.Context<never>; }) => () => void
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L8484)

Since v4.0.0