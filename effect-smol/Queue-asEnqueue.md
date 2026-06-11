Package: `effect`<br />
Module: `Queue`<br />

## Queue.asEnqueue

Converts a `Queue` to its write-only `Enqueue` interface.

**When to use**

Use to expose only the producer side of a `Queue` to code that should offer
values or signal queue lifecycle.

**Gotchas**

This is a type-level capability restriction. It returns the same queue
object, so it does not hide read operations at runtime.

**See**

- `asDequeue` for exposing only the read side of a `Queue`
- `Enqueue` for the write-only queue handle returned by this conversion

**Signature**

```ts
declare const asEnqueue: <A, E>(self: Queue<A, E>) => Enqueue<A, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Queue.ts#L112)

Since v4.0.0