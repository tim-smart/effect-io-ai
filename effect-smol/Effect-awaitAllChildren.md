Package: `effect`<br />
Module: `Effect`<br />

## Effect.awaitAllChildren

Waits for all child fibers forked by this effect to complete before this
effect completes.

**When to use**

Use to let an effect start child work concurrently while still delaying its
own completion until that child work is done.

**Gotchas**

Child fibers that already exist before the wrapped effect starts are not
awaited.

**See**

- `forkChild` for forking child fibers that are awaited by this operator
- `forkDetach` for forking fibers outside the child scope
- `forkIn` for forking into an explicit scope
- `forkScoped` for forking fibers tied to the current scope

**Signature**

```ts
declare const awaitAllChildren: <A, E, R>(self: Effect<A, E, R>) => Effect<A, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L8684)

Since v2.0.0