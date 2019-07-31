# DeviceFarm Web Node.js Findings

I created the following project.

https://console.aws.amazon.com/devicefarm/home#/projects/b6cf3b2c-8863-40e0-9b53-7c2b22c6986a/runs

Called DeviceFarm-Web-NodeJS-Testing.

I created a quite comprehensive pool of iOS devices in the following way:

-   All iPhones from 5s to 7, each once, with newest OS available.
-   All iPhones from 8 and up, with every OS version available.

The list of 15 devices is the following:

| Device               | OS     |
| -------------------- | ------ |
| Apple iPhone 5s      | 11.1   |
| Apple iPhone 6       | 11.4.1 |
| Apple iPhone 6 Plus  | 11.4.1 |
| Apple iPhone 6s      | 11.0   |
| Apple iPhone 6s Plus | 10.2   |
| Apple iPhone 7       | 12.0   |
| Apple iPhone 7 Plus  | 12.0   |
| Apple iPhone 8       | 11.0.3 |
| Apple iPhone 8       | 12.0   |
| Apple iPhone 8 Plus  | 11.0   |
| Apple iPhone 8 Plus  | 12.1   |
| Apple iPhone X       | 11.4   |
| Apple iPhone XR      | 12.0   |
| Apple iPhone XS      | 12.0   |
| Apple iPhone XS Max  | 12.1   |

Then I ran the same test package ([GitHub - gmatt/devicefarm-web-nodejs-test](https://github.com/gmatt/devicefarm-web-nodejs-test)) (same single upload) on all of them. Normally the test shouldn’t fail. If it failed, I deemed the device problematic, excluded it from the device pool, and ran the same test again with the new, smaller pool, and so on.

Here is a summary of the rounds taken, with links to the actual executions. Some logs and artifact files for each run are included also in the `artifacts` folder.

## Runs

### 2019-07-18T16:54+0200

-   15 devices
-   https://console.aws.amazon.com/devicefarm/home#/projects/b6cf3b2c-8863-40e0-9b53-7c2b22c6986a/runs/943b6fc6-3a0f-4cae-bc8a-4000dd570bfb
-   Apple iPhone 5s 11.1 ✅, Apple iPhone 6 11.4.1 ✅, Apple iPhone 6 Plus 11.4.1 ✅, Apple iPhone 6s 11.0 ✅, Apple iPhone 6s Plus 10.2 ✅, Apple iPhone 7 12.0 ✅, Apple iPhone 7 Plus 12.0 ✅, Apple iPhone 8 11.0.3 ✅, Apple iPhone 8 12.0 ✅, Apple iPhone 8 Plus 11.0 ✅, Apple iPhone 8 Plus 12.1 ❌, Apple iPhone X 11.4 ✅, Apple iPhone XR 12.0 ❌, Apple iPhone XS 12.0 ❌, Apple iPhone XS Max 12.1 ❌

### 2019-07-19T14:47+0200

-   10 devices
-   https://console.aws.amazon.com/devicefarm/home#/projects/b6cf3b2c-8863-40e0-9b53-7c2b22c6986a/runs/b1bd2ccc-5d34-4ab1-bae8-35bcdb694843
-   Apple iPhone 5s 11.1 ✅, Apple iPhone 6 11.4.1 ❌, Apple iPhone 6 Plus 11.4.1 ✅, Apple iPhone 6s 11.0 ✅, Apple iPhone 6s Plus 10.2 ✅, Apple iPhone 7 12.0 ❌, Apple iPhone 7 Plus 12.0 ✅, Apple iPhone 8 11.0.3 ✅, Apple iPhone 8 12.0 ✅, Apple iPhone 8 Plus 11.0 ✅

### 2019-07-19T15:15+0200

-   8 devices
-   https://console.aws.amazon.com/devicefarm/home#/projects/b6cf3b2c-8863-40e0-9b53-7c2b22c6986a/runs/c8148ac4-3d88-41d6-b61c-ec5ec4f23a00
-   Apple iPhone 5s 11.1 ✅, Apple iPhone 6 Plus 11.4.1 ✅, Apple iPhone 6s 11.0 ✅, Apple iPhone 6s Plus 10.2 ✅, Apple iPhone 7 Plus 12.0 ❌, Apple iPhone 8 12.0 ✅, Apple iPhone 8 11.0.3 ❌, Apple iPhone 8 Plus 11.0 ✅

### 2019-07-19T18:20+0200

-   6 devices
-   https://console.aws.amazon.com/devicefarm/home#/projects/b6cf3b2c-8863-40e0-9b53-7c2b22c6986a/runs/753cc4fe-de55-46c5-bd64-f7bd8e95fea2
-   Apple iPhone 5s 11.1 ✅, Apple iPhone 6 Plus 11.4.1 ✅, Apple iPhone 6s 11.0 ✅, Apple iPhone 6s Plus 10.2 ✅, Apple iPhone 8 12.0 ✅, Apple iPhone 8 Plus 11.0 ✅

### 2019-07-19T19:03+0200

-   6 devices
-   https://console.aws.amazon.com/devicefarm/home#/projects/b6cf3b2c-8863-40e0-9b53-7c2b22c6986a/runs/35b67f29-4aa7-4f75-967d-3cbec27b1ca1
-   Apple iPhone 5s 11.1 ✅, Apple iPhone 6 Plus 11.4.1 ✅, Apple iPhone 6s 11.0 ✅, Apple iPhone 6s Plus 10.2 ✅, Apple iPhone 8 12.0 ✅, Apple iPhone 8 Plus 11.0 ❌

### 2019-07-19T20:14+0200

-   5 devices
-   https://console.aws.amazon.com/devicefarm/home#/projects/b6cf3b2c-8863-40e0-9b53-7c2b22c6986a/runs/987ecedd-c0bb-4065-8a63-e5d95f78ca21
-   Apple iPhone 5s 11.1 ✅, Apple iPhone 6 Plus 11.4.1 ✅, Apple iPhone 6s 11.0 ✅, Apple iPhone 6s Plus 10.2 ✅, Apple iPhone 8 12.0 ✅

### 2019-07-21T10:52+0200

-   5 devices
-   https://console.aws.amazon.com/devicefarm/home#/projects/b6cf3b2c-8863-40e0-9b53-7c2b22c6986a/runs/784b845b-a8b6-4a09-8f91-f14cfe456f23
-   Apple iPhone 5s 11.1 ✅, Apple iPhone 6 Plus 11.4.1 ✅, Apple iPhone 6s 11.0 ✅, Apple iPhone 6s Plus 10.2 ✅, Apple iPhone 8 12.0 ✅

### 2019-07-22T11:28+0200

-   5 devices
-   https://console.aws.amazon.com/devicefarm/home#/projects/b6cf3b2c-8863-40e0-9b53-7c2b22c6986a/runs/a7b86ffa-f1f6-4f16-9ec5-e73fb3ac7155
-   Apple iPhone 5s 11.1 ❌, Apple iPhone 6 Plus 11.4.1 ✅, Apple iPhone 6s 11.0 ❌, Apple iPhone 6s Plus 10.2 ✅, Apple iPhone 8 12.0 ✅

### 2019-07-23T10:55+0200

-   3 devices
-   https://console.aws.amazon.com/devicefarm/home#/projects/b6cf3b2c-8863-40e0-9b53-7c2b22c6986a/runs/0f1f5ca4-5a56-44fd-8ad6-eef9da555ba4
-   Apple iPhone 6 Plus 11.4.1 ✅, Apple iPhone 6s Plus 10.2 ✅, Apple iPhone 8 12.0 ✅

### 2019-07-30T09:36+0200

-   3 devices
-   https://console.aws.amazon.com/devicefarm/home#/projects/b6cf3b2c-8863-40e0-9b53-7c2b22c6986a/runs/546561a4-4c47-46ed-b53f-d2dca061bb99
-   Apple iPhone 6 Plus 11.4.1 ✅, Apple iPhone 6s Plus 10.2 ✅, Apple iPhone 8 12.0 ✅

### 2019-07-30T20:03+0200

-   3 devices
-   https://console.aws.amazon.com/devicefarm/home#/projects/b6cf3b2c-8863-40e0-9b53-7c2b22c6986a/runs/e945bdd4-4763-4f24-8482-dc1d34f16571
-   Apple iPhone 6 Plus 11.4.1 ✅, Apple iPhone 6s Plus 10.2 ✅, Apple iPhone 8 12.0 ✅

### 2019-07-31T00:32+0200

-   3 devices
-   https://console.aws.amazon.com/devicefarm/home#/projects/b6cf3b2c-8863-40e0-9b53-7c2b22c6986a/runs/cf5ff89b-b375-4bc7-aa40-53843aeacd13
-   Apple iPhone 6 Plus 11.4.1 ✅, Apple iPhone 6s Plus 10.2 ✅, Apple iPhone 8 12.0 ✅

### 2019-07-31T04:48+0200

-   3 devices
-   https://console.aws.amazon.com/devicefarm/home#/projects/b6cf3b2c-8863-40e0-9b53-7c2b22c6986a/runs/30cc443c-f195-40f2-89c4-02a973e65cce
-   Apple iPhone 6 Plus 11.4.1 ✅, Apple iPhone 6s Plus 10.2 ✅, Apple iPhone 8 12.0 ✅

This last pool is possibly stable.

This shrinks down the original list to a sheer 3 devices:

| Device               | OS     |
| -------------------- | ------ |
| Apple iPhone 6 Plus  | 11.4.1 |
| Apple iPhone 6s Plus | 10.2   |
| Apple iPhone 8       | 12.0   |

## Error types

The tests failed for the following errors with the following rates of occurrence:

### 4 devices

```
Request failed due to unknown error: An unknown server-side error occurred while processing the command. Original error: Could not navigate to webview; there are none!
```

### 4 devices

```
Request failed due to Error: socket hang up
```

### 1 device

```
Request failed due to unknown error: An unknown server-side error occurred while processing the command. Original error: Error: WebSocket is not open: readyState 3 (CLOSED)
```

### 1 device

```
Request failed due to unknown error: An unknown server-side error occurred while processing the command. Original error: Remote debugger is not connected
```

### 1 device

```
AssertionError [ERR_ASSERTION] in "webdriver.io page should have the right title"
Expected values to be strictly equal:
+ actual - expected

+ 'Cannot Open Page'
- 'WebdriverIO · Next-gen WebDriver test framework for Node.js'
```
