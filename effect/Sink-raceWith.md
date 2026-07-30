Package: `effect`<br />
Module: `Sink`<br />

## Sink.raceWith

Runs both sinks in parallel on the input, using the specified merge
function as soon as one result or the other has been computed.

**Signature**

```ts
declare const raceWith: { <A2, In2, L2, E2, R2, A, E, A3, A4>(options: { readonly other: Sink<A2, In2, L2, E2, R2>; readonly onSelfDone: (exit: Exit.Exit<A, E>) => MergeDecision.MergeDecision<R2, E2, A2, E2 | E, A3>; readonly onOtherDone: (exit: Exit.Exit<A2, E2>) => MergeDecision.MergeDecision<R2, E, A, E2 | E, A4>; readonly capacity?: number | undefined; }): <In, L, R>(self: Sink<A, In, L, E, R>) => Sink<A3 | A4, In & In2, L2 | L, E2 | E, R2 | R>; <A, In, L, E, R, A2, In2, L2, E2, R2, A3, A4>(self: Sink<A, In, L, E, R>, options: { readonly other: Sink<A2, In2, L2, E2, R2>; readonly onSelfDone: (exit: Exit.Exit<A, E>) => MergeDecision.MergeDecision<R2, E2, A2, E | E2, A3>; readonly onOtherDone: (exit: Exit.Exit<A2, E2>) => MergeDecision.MergeDecision<R2, E, A, E | E2, A4>; readonly capacity?: number | undefined; }): Sink<A3 | A4, In & In2, L | L2, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L1211)

Since v2.0.0