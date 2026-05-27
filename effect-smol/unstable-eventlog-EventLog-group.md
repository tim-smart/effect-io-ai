Package: `effect`<br />
Module: `EventLog`<br />

## EventLog.group

Creates a layer that registers handlers for every event in an event group.

**Details**

The callback receives a `Handlers` builder; its return type is checked so every
event in the group is handled.

**Signature**

```ts
declare const group: <Events extends Event.Any, Return>(group: EventGroup.EventGroup<Events>, f: (handlers: Handlers<never, Events>) => Handlers.ValidateReturn<Return>) => Layer.Layer<Event.ToService<Events>, Handlers.Error<Return>, Exclude<Handlers.Services<Return>, Scope.Scope | Identity> | Registry>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EventLog.ts#L551)

Since v4.0.0