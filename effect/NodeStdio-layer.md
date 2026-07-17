Package: `@effect/platform-node-shared`<br />
Module: `NodeStdio`<br />

## NodeStdio.layer

Provides `Stdio` from `process.argv`, `process.stdin`, `process.stdout`,
and `process.stderr`; stdin remains open and stdout/stderr are not ended by
default.

**Signature**

```ts
declare const layer: Layer.Layer<Stdio.Stdio, never, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-node-shared/src/NodeStdio.ts#L27)

Since v4.0.0