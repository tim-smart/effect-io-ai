Package: `@effect/cluster`<br />
Module: `MessageState`<br />

## MessageState.match

Match over the possible states of a MessageState

**Signature**

```ts
declare const match: <A, B, C = B>(cases: { onAcknowledged: (value: MessageStateAcknowledged) => B; onProcessed: (exit: MessageStateProcessed<A>) => C; }) => (value: MessageState<A>) => B | C
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cluster/src/MessageState.ts#L88)

Since v1.0.0