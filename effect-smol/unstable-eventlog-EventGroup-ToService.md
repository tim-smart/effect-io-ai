Package: `effect`<br />
Module: `EventGroup`<br />

## EventGroup.ToService

Derives the handler service markers required for all events in an event group.

**Signature**

```ts
type ToService<A> = A extends EventGroup<infer _Events> ? Event.ToService<_Events>
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EventGroup.ts#L106)

Since v4.0.0