Package: `effect`<br />
Module: `EventGroup`<br />

## EventGroup.Events

Extracts the union of event definitions contained in an event group.

**Signature**

```ts
type Events<Group> = Group extends EventGroup<infer _Events> ? _Events
  : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/EventGroup.ts#L115)

Since v4.0.0