Package: `@effect/platform-browser`<br />
Module: `Geolocation`<br />

## Geolocation.watchPosition

Streams positions from the `Geolocation` service using `watchPosition`, with an optional sliding buffer size.

**Signature**

```ts
declare const watchPosition: (options?: (PositionOptions & { readonly bufferSize?: number | undefined; }) | undefined) => Stream.Stream<GeolocationPosition, GeolocationError, Geolocation>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-browser/src/Geolocation.ts#L245)

Since v4.0.0