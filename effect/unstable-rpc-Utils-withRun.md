Package: `effect`<br />
Module: `Utils`<br />

## Utils.withRun

Builds a service with a `run` method that buffers writes until `run` installs
a writer, replays buffered writes with their original contexts, and restores
the previous writer when the run ends.

**Signature**

```ts
declare const withRun: <A extends { readonly run: (f: (...args: Array<any>) => Effect.Effect<void>) => Effect.Effect<never>; }>() => <EX, RX>(f: (write: Parameters<A["run"]>[0]) => Effect.Effect<Omit<A, "run">, EX, RX>) => Effect.Effect<A, EX, RX>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Utils.ts#L25)

Since v4.0.0