/*
Carbon

Connect external data to LLMs, no matter the source.

API version: 1.0.0
*/

// Code generated by Konfig (https://konfigthis.com); DO NOT EDIT.

package carbon

import (
	"bytes"
	"context"
	"io/ioutil"
	"net/http"
	"net/url"
)


// OrganizationsApiService OrganizationsApi service
type OrganizationsApiService service

type OrganizationsApiGetRequest struct {
	ctx context.Context
	ApiService *OrganizationsApiService
}

func (r OrganizationsApiGetRequest) Execute() (*OrganizationResponse, *http.Response, error) {
	return r.ApiService.GetExecute(r)
}

/*
Get Get Organization

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @return OrganizationsApiGetRequest
*/
func (a *OrganizationsApiService) Get() OrganizationsApiGetRequest {
	return OrganizationsApiGetRequest{
		ApiService: a,
		ctx: a.client.cfg.Context,
	}
}

// Execute executes the request
//  @return OrganizationResponse
func (a *OrganizationsApiService) GetExecute(r OrganizationsApiGetRequest) (*OrganizationResponse, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodGet
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  *OrganizationResponse
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "OrganizationsApiService.Get")
	if err != nil {
		return localVarReturnValue, nil, &GenericOpenAPIError{error: err.Error()}
	}

    subpath := "/organization"
	localVarPath := localBasePath + subpath
	if a.client.cfg.Host != "" {
		localVarPath = a.client.cfg.Scheme + "://" + a.client.cfg.Host + subpath
	}

	localVarHeaderParams := make(map[string]string)
	localVarQueryParams := url.Values{}
	localVarFormParams := url.Values{}

	// to determine the Content-Type header
	localVarHTTPContentTypes := []string{}

	// set Content-Type header
	localVarHTTPContentType := selectHeaderContentType(localVarHTTPContentTypes)
	if localVarHTTPContentType != "" {
		localVarHeaderParams["Content-Type"] = localVarHTTPContentType
	}

	// to determine the Accept header
	localVarHTTPHeaderAccepts := []string{"application/json"}

	// set Accept header
	localVarHTTPHeaderAccept := selectHeaderAccept(localVarHTTPHeaderAccepts)
	if localVarHTTPHeaderAccept != "" {
		localVarHeaderParams["Accept"] = localVarHTTPHeaderAccept
	}
	if r.ctx != nil {
		// API Key Authentication
		if auth, ok := r.ctx.Value(ContextAPIKeys).(map[string]APIKey); ok {
			if apiKey, ok := auth["apiKey"]; ok {
				var key string
				if apiKey.Prefix != "" {
					key = apiKey.Prefix + apiKey.Key
				} else {
					key = apiKey.Key
				}
				localVarHeaderParams["authorization"] = key
			}
		}
	}

    prepareRequestBefore(r.ctx, localVarPath, localVarHTTPMethod, localVarPostBody, localVarHeaderParams, localVarQueryParams, localVarFormParams, formFiles)
	req, err := a.client.prepareRequest(r.ctx, localVarPath, localVarHTTPMethod, localVarPostBody, localVarHeaderParams, localVarQueryParams, localVarFormParams, formFiles)
	if err != nil {
		return localVarReturnValue, nil, err
	}

	localVarHTTPResponse, err := a.client.callAPI(req)
	if err != nil || localVarHTTPResponse == nil {
		return localVarReturnValue, localVarHTTPResponse, err
	}

	localVarBody, err := ioutil.ReadAll(localVarHTTPResponse.Body)
	localVarHTTPResponse.Body.Close()
	localVarHTTPResponse.Body = ioutil.NopCloser(bytes.NewBuffer(localVarBody))
	if err != nil {
		return localVarReturnValue, localVarHTTPResponse, err
	}

	if localVarHTTPResponse.StatusCode >= 300 {
		newErr := &GenericOpenAPIError{
			body:  localVarBody,
			error: localVarHTTPResponse.Status,
		}
		return localVarReturnValue, localVarHTTPResponse, newErr
	}

	err = a.client.decode(&localVarReturnValue, localVarBody, localVarHTTPResponse.Header.Get("Content-Type"))
	if err != nil {
		newErr := &GenericOpenAPIError{
			body:  localVarBody,
			error: err.Error(),
		}
		return localVarReturnValue, localVarHTTPResponse, newErr
	}

	return localVarReturnValue, localVarHTTPResponse, nil
}

type OrganizationsApiUpdateRequest struct {
	ctx context.Context
	ApiService *OrganizationsApiService
	updateOrganizationInput UpdateOrganizationInput
}

func (r OrganizationsApiUpdateRequest) Execute() (*GenericSuccessResponse, *http.Response, error) {
	return r.ApiService.UpdateExecute(r)
}

/*
Update Update Organization

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @param updateOrganizationInput
 @return OrganizationsApiUpdateRequest
*/
func (a *OrganizationsApiService) Update(updateOrganizationInput UpdateOrganizationInput) OrganizationsApiUpdateRequest {
	return OrganizationsApiUpdateRequest{
		ApiService: a,
		ctx: a.client.cfg.Context,
		updateOrganizationInput: updateOrganizationInput,
	}
}

// Execute executes the request
//  @return GenericSuccessResponse
func (a *OrganizationsApiService) UpdateExecute(r OrganizationsApiUpdateRequest) (*GenericSuccessResponse, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodPost
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  *GenericSuccessResponse
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "OrganizationsApiService.Update")
	if err != nil {
		return localVarReturnValue, nil, &GenericOpenAPIError{error: err.Error()}
	}

    subpath := "/organization/update"
	localVarPath := localBasePath + subpath
	if a.client.cfg.Host != "" {
		localVarPath = a.client.cfg.Scheme + "://" + a.client.cfg.Host + subpath
	}

	localVarHeaderParams := make(map[string]string)
	localVarQueryParams := url.Values{}
	localVarFormParams := url.Values{}

	// to determine the Content-Type header
	localVarHTTPContentTypes := []string{"application/json"}

	// set Content-Type header
	localVarHTTPContentType := selectHeaderContentType(localVarHTTPContentTypes)
	if localVarHTTPContentType != "" {
		localVarHeaderParams["Content-Type"] = localVarHTTPContentType
	}

	// to determine the Accept header
	localVarHTTPHeaderAccepts := []string{"application/json"}

	// set Accept header
	localVarHTTPHeaderAccept := selectHeaderAccept(localVarHTTPHeaderAccepts)
	if localVarHTTPHeaderAccept != "" {
		localVarHeaderParams["Accept"] = localVarHTTPHeaderAccept
	}
	// body params
    if !checkNilInterface(r.updateOrganizationInput) {
        localVarPostBody = r.updateOrganizationInput
    }
	if r.ctx != nil {
		// API Key Authentication
		if auth, ok := r.ctx.Value(ContextAPIKeys).(map[string]APIKey); ok {
			if apiKey, ok := auth["apiKey"]; ok {
				var key string
				if apiKey.Prefix != "" {
					key = apiKey.Prefix + apiKey.Key
				} else {
					key = apiKey.Key
				}
				localVarHeaderParams["authorization"] = key
			}
		}
	}

    prepareRequestBefore(r.ctx, localVarPath, localVarHTTPMethod, localVarPostBody, localVarHeaderParams, localVarQueryParams, localVarFormParams, formFiles)
	req, err := a.client.prepareRequest(r.ctx, localVarPath, localVarHTTPMethod, localVarPostBody, localVarHeaderParams, localVarQueryParams, localVarFormParams, formFiles)
	if err != nil {
		return localVarReturnValue, nil, err
	}

	localVarHTTPResponse, err := a.client.callAPI(req)
	if err != nil || localVarHTTPResponse == nil {
		return localVarReturnValue, localVarHTTPResponse, err
	}

	localVarBody, err := ioutil.ReadAll(localVarHTTPResponse.Body)
	localVarHTTPResponse.Body.Close()
	localVarHTTPResponse.Body = ioutil.NopCloser(bytes.NewBuffer(localVarBody))
	if err != nil {
		return localVarReturnValue, localVarHTTPResponse, err
	}

	if localVarHTTPResponse.StatusCode >= 300 {
		newErr := &GenericOpenAPIError{
			body:  localVarBody,
			error: localVarHTTPResponse.Status,
		}
		if localVarHTTPResponse.StatusCode == 422 {
			var v HTTPValidationError
			err = a.client.decode(&v, localVarBody, localVarHTTPResponse.Header.Get("Content-Type"))
			if err != nil {
				newErr.error = err.Error()
				return localVarReturnValue, localVarHTTPResponse, newErr
			}
            		newErr.error = formatErrorMessage(localVarHTTPResponse.Status, &v)
            		newErr.model = v
		}
		return localVarReturnValue, localVarHTTPResponse, newErr
	}

	err = a.client.decode(&localVarReturnValue, localVarBody, localVarHTTPResponse.Header.Get("Content-Type"))
	if err != nil {
		newErr := &GenericOpenAPIError{
			body:  localVarBody,
			error: err.Error(),
		}
		return localVarReturnValue, localVarHTTPResponse, newErr
	}

	return localVarReturnValue, localVarHTTPResponse, nil
}

type OrganizationsApiUpdateStatsRequest struct {
	ctx context.Context
	ApiService *OrganizationsApiService
}

func (r OrganizationsApiUpdateStatsRequest) Execute() (*GenericSuccessResponse, *http.Response, error) {
	return r.ApiService.UpdateStatsExecute(r)
}

/*
UpdateStats Update Organization Statistics

Use this endpoint to reaggregate the statistics for an organization, for example aggregate_file_size. The reaggregation
process is asyncronous so a webhook will be sent with the event type being FILE_STATISTICS_AGGREGATED to notify when the
process is complee. After this aggregation is complete, the updated statistics can be retrieved using the /organization
endpoint. The response of /organization willalso contain a timestamp of the last time the statistics were reaggregated.

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @return OrganizationsApiUpdateStatsRequest
*/
func (a *OrganizationsApiService) UpdateStats() OrganizationsApiUpdateStatsRequest {
	return OrganizationsApiUpdateStatsRequest{
		ApiService: a,
		ctx: a.client.cfg.Context,
	}
}

// Execute executes the request
//  @return GenericSuccessResponse
func (a *OrganizationsApiService) UpdateStatsExecute(r OrganizationsApiUpdateStatsRequest) (*GenericSuccessResponse, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodPost
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  *GenericSuccessResponse
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "OrganizationsApiService.UpdateStats")
	if err != nil {
		return localVarReturnValue, nil, &GenericOpenAPIError{error: err.Error()}
	}

    subpath := "/organization/statistics"
	localVarPath := localBasePath + subpath
	if a.client.cfg.Host != "" {
		localVarPath = a.client.cfg.Scheme + "://" + a.client.cfg.Host + subpath
	}

	localVarHeaderParams := make(map[string]string)
	localVarQueryParams := url.Values{}
	localVarFormParams := url.Values{}

	// to determine the Content-Type header
	localVarHTTPContentTypes := []string{}

	// set Content-Type header
	localVarHTTPContentType := selectHeaderContentType(localVarHTTPContentTypes)
	if localVarHTTPContentType != "" {
		localVarHeaderParams["Content-Type"] = localVarHTTPContentType
	}

	// to determine the Accept header
	localVarHTTPHeaderAccepts := []string{"application/json"}

	// set Accept header
	localVarHTTPHeaderAccept := selectHeaderAccept(localVarHTTPHeaderAccepts)
	if localVarHTTPHeaderAccept != "" {
		localVarHeaderParams["Accept"] = localVarHTTPHeaderAccept
	}
	if r.ctx != nil {
		// API Key Authentication
		if auth, ok := r.ctx.Value(ContextAPIKeys).(map[string]APIKey); ok {
			if apiKey, ok := auth["apiKey"]; ok {
				var key string
				if apiKey.Prefix != "" {
					key = apiKey.Prefix + apiKey.Key
				} else {
					key = apiKey.Key
				}
				localVarHeaderParams["authorization"] = key
			}
		}
	}

    prepareRequestBefore(r.ctx, localVarPath, localVarHTTPMethod, localVarPostBody, localVarHeaderParams, localVarQueryParams, localVarFormParams, formFiles)
	req, err := a.client.prepareRequest(r.ctx, localVarPath, localVarHTTPMethod, localVarPostBody, localVarHeaderParams, localVarQueryParams, localVarFormParams, formFiles)
	if err != nil {
		return localVarReturnValue, nil, err
	}

	localVarHTTPResponse, err := a.client.callAPI(req)
	if err != nil || localVarHTTPResponse == nil {
		return localVarReturnValue, localVarHTTPResponse, err
	}

	localVarBody, err := ioutil.ReadAll(localVarHTTPResponse.Body)
	localVarHTTPResponse.Body.Close()
	localVarHTTPResponse.Body = ioutil.NopCloser(bytes.NewBuffer(localVarBody))
	if err != nil {
		return localVarReturnValue, localVarHTTPResponse, err
	}

	if localVarHTTPResponse.StatusCode >= 300 {
		newErr := &GenericOpenAPIError{
			body:  localVarBody,
			error: localVarHTTPResponse.Status,
		}
		return localVarReturnValue, localVarHTTPResponse, newErr
	}

	err = a.client.decode(&localVarReturnValue, localVarBody, localVarHTTPResponse.Header.Get("Content-Type"))
	if err != nil {
		newErr := &GenericOpenAPIError{
			body:  localVarBody,
			error: err.Error(),
		}
		return localVarReturnValue, localVarHTTPResponse, newErr
	}

	return localVarReturnValue, localVarHTTPResponse, nil
}
