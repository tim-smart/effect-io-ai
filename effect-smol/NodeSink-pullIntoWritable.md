Package: `@effect/platform-node-shared`<br />
Module: `NodeSink`<br />

## NodeSink.pullIntoWritable

Repeatedly pulls non-empty chunks and writes them to a Node writable stream,
waiting for `drain` when needed, failing on writable errors, and ending the
writable on upstream completion unless disabled.

**Signature**

```ts
declare const pullIntoWritable: <A, IE, E>(options: { readonly pull: Pull.Pull<NonEmptyReadonlyArray<A>, IE, unknown>; readonly writable: Writable; readonly onError: (error: unknown) => E; readonly endOnDone?: boolean | undefined; readonly encoding?: BufferEncoding | undefined; }) => Pull.Pull<never, IE | E, unknown>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-node/src/NodeSink.ts#L92)

Since v4.0.0