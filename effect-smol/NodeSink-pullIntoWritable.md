Package: `@effect/platform-node-shared`<br />
Module: `NodeSink`<br />

## NodeSink.pullIntoWritable

Writes Effect chunks into a Node writable stream.

**When to use**

Use to implement custom Node stream adapters that already have an upstream
pull and need direct control over a writable stream.

**Details**

The loop waits for `drain` when needed, fails on writable errors, and ends
the writable on upstream completion unless `endOnDone` is `false`.

**Signature**

```ts
declare const pullIntoWritable: <A, IE, E>(options: { readonly pull: Pull.Pull<NonEmptyReadonlyArray<A>, IE, unknown>; readonly writable: Writable; readonly onError: (error: unknown) => E; readonly endOnDone?: boolean | undefined; readonly encoding?: BufferEncoding | undefined; }) => Pull.Pull<never, IE | E, unknown>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-node/src/NodeSink.ts#L100)

Since v4.0.0