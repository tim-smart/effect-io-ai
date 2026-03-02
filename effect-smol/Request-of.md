Package: `effect`<br />
Module: `Request`<br />

## Request.of

Creates a constructor function for a specific Request type.

**Example**

```ts
import { Request } from "effect"

declare const UserProfile: unique symbol
declare const ProfileError: unique symbol
type UserProfile = typeof UserProfile
type ProfileError = typeof ProfileError

interface GetUserProfile extends Request.Request<UserProfile, ProfileError> {
  readonly id: string
  readonly includeSettings: boolean
}

const GetUserProfile = Request.of<GetUserProfile>()

const request = GetUserProfile({
  id: "user-123",
  includeSettings: true
})
```

**Signature**

```ts
declare const of: <R extends Request<any, any, any>>() => Constructor<R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Request.ts#L240)

Since v2.0.0