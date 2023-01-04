*** Settings ***
Library    RPA.Browser.Selenium   WITH NAME    Web
Library    RPA.Windows    WITH NAME    Win
Library    RPA.Desktop    WITH NAME    Desk

*** Tasks ***
Try Browser Locator
    Open Available Browser     google.com
    Web.Wait Until Element Is Visible    alias:google-accept-all
    Web.Set Focus To Element    //button[@id='L2AGLb']/div
    Web.Click Button    Accept all
    Take Screenshot   output/browser-locator.png
    [Teardown]    Close All Browsers    

Try Windows Locator
    Windows Run      calc.exe
    Control Window    Calculator
    Win.Send Keys     keys={1}{2}     # Using direct key input is fast
    Win.Click    id:num3Button        # Using direct locator strings     
    Win.Click    calc-plus            # Using a stored locator
    Take Screenshot   output/windows-locator.png
    [Teardown]    Close Current Window

Try Image Locator
    Open Available Browser     google.com
    Desk.Click    alias:google-reject-all   
    Take Screenshot   output/image-locator.png
    [Teardown]    Close All Browsers    
