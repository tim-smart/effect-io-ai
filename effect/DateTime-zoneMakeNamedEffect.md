## zoneMakeNamedEffect

Create a named time zone from a IANA time zone identifier. If the time zone
is invalid, it will fail with an `IllegalArgumentException`.

**Signature**

```ts
declare const zoneMakeNamedEffect: (zoneId: string) => Effect.Effect<TimeZone.Named, IllegalArgumentException>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/DateTime.ts#L546)

Since v3.6.0