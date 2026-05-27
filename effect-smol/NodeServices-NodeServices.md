Package: `@effect/platform-node`<br />
Module: `NodeServices`<br />

## NodeServices.NodeServices

The union of core services provided by the Node platform layer, including
child process spawning, filesystem, path, stdio, and terminal services.

**Signature**

```ts
type NodeServices = ChildProcessSpawner | Crypto | FileSystem | Path | Stdio | Terminal
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-node/src/NodeServices.ts#L57)

Since v4.0.0