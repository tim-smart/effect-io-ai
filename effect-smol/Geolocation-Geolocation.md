Package: `@effect/platform-browser`<br />
Module: `Geolocation`<br />

## Geolocation.Geolocation

Service interface for browser geolocation, providing effects for the current position and streams of watched positions.

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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-browser/src/Geolocation.ts#L37)

Since v4.0.0