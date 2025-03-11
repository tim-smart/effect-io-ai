## empty

An `EventGroup` is a collection of `Event`s. You can use an `EventGroup` to
represent a portion of your domain.

The events can be implemented later using the `EventLog.group` api.

**Signature**

```ts
declare const empty: EventGroup<never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/experimental/src/EventGroup.ts#L158)

Since v1.0.0