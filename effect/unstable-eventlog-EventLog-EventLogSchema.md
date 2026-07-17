Package: `effect`<br />
Module: `EventLog`<br />

## EventLog.EventLogSchema

Schema describing the event groups that can be written through an `EventLog`.

**Signature**

```ts
export interface EventLogSchema<Groups extends EventGroup.Any> {
  readonly [SchemaTypeId]: SchemaTypeId
  readonly groups: ReadonlyArray<Groups>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/EventLog.ts#L217)

Since v4.0.0