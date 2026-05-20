Package: `effect`<br />
Module: `Event`<br />

## Event.EventHandler

Marker service associated with the handler for an event tag.

**Details**

`ToService` derives this service from an `Event` so handler layers can expose
which events they implement.

**Signature**

```ts
export interface EventHandler<in out Tag extends string> {
  readonly _: unique symbol
  readonly tag: Tag
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Event.ts#L86)

Since v4.0.0