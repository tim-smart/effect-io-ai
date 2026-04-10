Package: `effect`<br />
Module: `EventGroup`<br />

## EventGroup.empty

An `EventGroup` is a collection of `Event`s. You can use an `EventGroup` to
represent a portion of your domain.

The events can be implemented later using the `EventLog.group` api.

**Signature**

```ts
declare const empty: EventGroup<never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EventGroup.ts#L162)

Since v4.0.0