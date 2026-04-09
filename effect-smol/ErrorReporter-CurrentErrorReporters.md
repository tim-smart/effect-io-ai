Package: `effect`<br />
Module: `ErrorReporter`<br />

## ErrorReporter.CurrentErrorReporters

A `Context.Reference` holding the set of active `ErrorReporter`s for the
current fiber. Defaults to an empty set (no reporting).

Prefer `layer` to configure reporters via the `Layer` API. Use this
reference directly only when you need low-level control (e.g. reading the
current reporters or swapping them inside a `FiberRef`).

**Signature**

```ts
declare const CurrentErrorReporters: Context.Reference<ReadonlySet<ErrorReporter>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ErrorReporter.ts#L168)

Since v4.0.0