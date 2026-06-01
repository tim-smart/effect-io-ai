Package: `effect`<br />
Module: `Queue`<br />

## Queue.await

Waits until a queue reaches the `Done` state.

**When to use**

Use to suspend a fiber until no further values can be taken from the queue
and its terminal outcome is known.

**Details**

The effect succeeds with `void` for normal `Done` completion. Other
terminal causes are preserved, so failures and interruptions complete this
effect with the same terminal outcome.

**Gotchas**

A queue can be closing before it is done. `await` resumes at `Done`, not at
the first completion signal, so buffered messages may need to be drained
first.

**See**

- `end` for signaling normal completion while preserving buffered messages for consumers
- `fail` for signaling an error while preserving buffered messages for consumers
- `interrupt` for graceful interruption after buffered messages are drained
- `shutdown` for immediately discarding buffered messages and resuming pending operations

**Signature**

```ts
declare const await: <A, E>(self: Dequeue<A, E>) => Effect<void, Exclude<E, Done>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Queue.ts#L1646)

Since v4.0.0