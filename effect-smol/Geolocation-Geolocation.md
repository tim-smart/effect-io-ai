Package: `@effect/platform-browser`<br />
Module: `Geolocation`<br />

## Geolocation.Geolocation

Service interface for browser geolocation, providing effects for the current position and streams of watched positions.

**When to use**

Use when browser code needs a typed Effect service for one-shot location
reads or streamed location updates.

**Details**

`getCurrentPosition` returns one position effect. `watchPosition` returns a
stream and accepts the browser `PositionOptions` plus an optional sliding
`bufferSize`.

**Gotchas**

Browser permission prompts, denied permissions, timeouts, unavailable
position data, secure-context restrictions, and policy restrictions are
surfaced as `GeolocationError`.

**See**

- `GeolocationError` for represented browser geolocation failures
- `layer` for the browser-backed service implementation

**Signature**

```ts
export interface Geolocation {
  readonly [TypeId]: typeof TypeId
  readonly getCurrentPosition: (
    options?: PositionOptions | undefined
  ) => Effect.Effect<GeolocationPosition, GeolocationError>
  readonly watchPosition: (
    options?:
      | PositionOptions & {
        readonly bufferSize?: number | undefined
      }
      | undefined
  ) => Stream.Stream<GeolocationPosition, GeolocationError>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-browser/src/Geolocation.ts#L73)

Since v4.0.0